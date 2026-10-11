.PHONY: vectors sim python-check clean
vectors:
	python3 scripts/generate_vectors.py
sim:
	bash sim/run_sim.sh
python-check:
	python3 -m unittest discover -s scripts -p 'test_*.py'
clean:
	rm -f /tmp/tb_mac_unit.vvp /tmp/tb_accumulator.vvp /tmp/tb_cnn_top.vvp
	rm -f reports/simulation/*.log
